from datetime import datetime

from pyconca.dao.base_dao import BaseDao
from pyconca.models import Activation
from pyconca.models import User


class ActivationDao(BaseDao):

    def __init__(self, authenticated_user):
        BaseDao.__init__(self, authenticated_user, Activation)

    def check_valid(self, activation_code):
        res = self._query().filter_by(code=activation_code).first()
        if res:
            if res.valid_until < datetime.now():
                return False
            return True
        else:
            return False

    def get_user_by_code(self, username, code):
        """Get the user for this code"""
        res = self._query().filter_by(code=code) \
                .filter(User.username == username).first()

        if res is not None:
            return res.user
        else:
            return None

    def set_new_pwd(self, username, code, new_pwd):
        res = self._query().filter_by(code=code) \
                .filter(User.username == username).first()

        if res is not None:
            user = res.user
            #user.activated = True
            user.password = new_pwd
            self.activate(res)
            return True
        else:
            return False

    def activate(self, instance):
        self.delete(instance)

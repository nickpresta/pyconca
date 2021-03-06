<%inherit file="base.mako"/>
<%block name="head_title">PyCon.ca - building your Python Canada Community</%block>
<%block name="head_description">${parent.head_description()}</%block>
<%block name="body_class">home-page</%block>

<%block name="content">

<section id="Intro">
  <div class="container">
    <div id="Banner">
        <h1>PyCon.ca</h1>
        <h2>${_(u"Bringing the Canadian Python community together")}</h2>
        <div id="DateAndPlace">${_(u"November 9 – 13, 2012 • Toronto")}</div>
    </div>
    <div>
      <div id="Callout">
        <p id="Teaser"><%block filter="gettext">INDEX_ABOUT_BLURB</%block></p>
        <div id="Register">
          <a href="http://guestlistapp.com/events/116013" class="guestlist-event-116013 register-button-en">${_(u"Register")}</a>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="Sponsors">
  <h2>${_("Our Sponsors")}</h2>
  <div id="slider">
      <div class="viewport">
          <ul class="overview" style="width: 1560px; left: 0px; ">
            <li><%include file="pyconca:templates/sponsors/500px.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/freshbooks.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/wave.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/chango.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/psf.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/google.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/points.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/crs.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/upverter.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/bnotions.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/mozilla.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/agendaless.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/heroku.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/trapeze.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/guru_link.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/cloudant.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/gadventures.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/vmfarms.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/uber.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/llc.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/element34.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/danols.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/albert_oconnor.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/amelanche.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/montreal-python.mako"/></li>
            <li><%include file="pyconca:templates/sponsors/verso.mako"/></li>
            </div>
          </ul>
      </div>
  </div>
  <p class="bubble">${_(u"Interested in a sponsorship opportunity?")} <a href="${request.application_url}/sponsors">${_(u"Learn more")}</a>.</p>
</section>

<section id="Blurbs">
  <div class="container">
    <div class="row-fluid">
      <div class="span6 blurb speak">
        <h2>${_(u"Speak")}</h2>
        <p><%block filter="gettext">INDEX_SPEAK_BLURB</%block></p>
        <a href="${request.application_url}/speakers" class="more-info">${_(u"More info")}</a>
      </div>
      <div class="span6 blurb learn">
        <h2>${_(u"Learn")}</h2>
        <p><%block filter="gettext">INDEX_LEARN_BLURB</%block></p>
        <a href="${request.application_url}/learn" class="more-info">${_("More info")}</a>
      </div>
    </div>

    <div class="row-fluid">
      <div class="span6 blurb venue">
        <h2>${_(u"Venue")}</h2>
        <p><%block filter="gettext">INDEX_VENUE_BLURB</%block></p>
        <a href="${request.application_url}/venue" class="more-info">${_(u"More info")}</a>
      </div>
      <div class="span6 blurb schedule">
        <h2>${_(u"Schedule")}</h2>
        <p><%block filter="gettext">INDEX_SCHEDULE_BLURB</%block></p>
        <a href="${request.application_url}/schedule" class="more-info">${_(u"More info")}</a>
      </div>
    </div>
  </div>
</section>

<script>
  $(function() {
    $('#slider').tinycarousel({
      interval: true,
      intervaltime: 3500,
      duration: 500
    });
  });
</script>

<script type="text/javascript" src="//guestlistapp.com/javascripts/guestlist-embed.js"></script>

</%block>

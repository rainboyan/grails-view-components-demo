<%@ page import="org.rainboyan.demo.ButtonComponent; org.rainboyan.demo.CardComponent" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Grails View Components Demo</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li class="dropdown-item"><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li class="dropdown-item"><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li class="dropdown-item"><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="dropdown-divider"></li>
                <li class="dropdown-item"><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li class="dropdown-item"><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li class="dropdown-item"><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="dropdown-divider"></li>
                <li class="dropdown-item"><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li class="dropdown-item"><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li class="dropdown-item"><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li class="dropdown-item"><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li class="dropdown-item"><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu dropdown-menu-right">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li class="dropdown-item"><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <!--div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div-->

    <div id="content" role="main">
        <div class="container">
            <div class="row p-3">
                <div class="col-3">
                    ${new CardComponent(title: 'My First Component', content: 'This is the first Card').render()}
                </div>
                <div class="col-3">
                    ${new CardComponent(title: 'My Second Component', content: 'This is the second Card').render()}
                </div>
                <div class="col-3">
                    ${new CardComponent(title: 'My Third Component', content: 'This is the third Card').render()}
                </div>
                <div class="col-3">
                    ${new CardComponent(title: 'My Fouth Component', content: 'This is the fouth Card').render()}
                </div>
            </div>
            <div class="row p-3">
                <div class="col-3">
                    ${new ButtonComponent(name: 'Primary Button', cssClasses: 'btn-primary').render()}
                    ${new ButtonComponent(name: 'Success Button', cssClasses: 'btn-success').render()}
                </div>
                <div class="col-3">
                    ${new ButtonComponent(name: 'Large Success Button', cssClasses: 'btn-success', size: 'lg').render()}
                    ${new ButtonComponent(name: 'Small Success Button', cssClasses: 'btn-success', size: 'sm').render()}
                </div>
                <div class="col-3">
                    <vc:render component="button" name="Hello Grails" cssClasses="btn-danger" icon="box" />
                    <vc:render component="button" name="View Components" cssClasses="btn-success" icon="star" />
                </div>
                <div class="col-3">
                    <vc:render component="icon" name="alarm" />
                    <vc:render component="icon" name="apple" />
                    <vc:render component="icon" name="bag" />
                    <vc:render component="icon" name="bank" />
                    <vc:render component="icon" name="box" />
                    <!-- GSP: Custom namespace and tag not support yet -->
                    <!--vc:button type="button" name="Demo Button" cssClasses="btn-danger" /-->
                </div>
            </div>
        </div>
    </div>
</body>
</html>
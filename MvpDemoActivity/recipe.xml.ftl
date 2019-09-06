<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

	<!--activity-->
    <instantiate from="root/src/app_package/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activity/${activityName}Activity.${ktOrJavaExt}" />
	  <!--View-->
	<instantiate from="root/src/app_package/MvpView.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/I${activityName}View.${ktOrJavaExt}" />
	<!--Presenter-->
	<instantiate from="root/src/app_package/MvpPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${activityName}Presenter.${ktOrJavaExt}" />	   
    <open file="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.${ktOrJavaExt}" />

</recipe>

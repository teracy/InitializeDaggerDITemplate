<?xml version="1.0"?>
<globals>
  <#assign useAppCompat=includeAndroidArch || backwardsCompatibility>
  <global id="includeAndroidArch" type="boolean" value="false" />
  <global id="daggerVersion" type="string" value="${daggerVersion!'2.10'}" />
  <global id="archLifecycleExtVersion" type="string" value="${archLifecycleExtVersion!'1.0.0'}" />
  <global id="useAppCompat" type="boolean" value="${useAppCompat?string}" />
  <#include "root://activities/common/common_globals.xml.ftl" />
</globals>

buildscript {
    ext.dagger_version = '${daggerVersion}'
<#if includeAndroidArch>
    ext.arch_lifecycle_extensions_version = '${archLifecycleExtVersion}'
</#if>
}

<#if includeAndroidArch>
allprojects {
    repositories {
        maven { url 'https://maven.google.com' }
    }
}
</#if>

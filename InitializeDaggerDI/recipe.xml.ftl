<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
  <@kt.addAllKotlinDependencies />

<!-- build.gradle -->
  <merge from="root/build.gradle-project.ftl"
          to="${escapeXmlAttribute(projectLocation)}/build.gradle" />
  <merge from="root/build.gradle-module.ftl"
          to="${escapeXmlAttribute(projectOut)}/build.gradle" />

  <dependency mavenUrl="com.google.dagger:dagger:$dagger_version" gradleConfiguration="compile" />
  <dependency mavenUrl="com.google.dagger:dagger-android:$dagger_version" gradleConfiguration="compile" />
  <dependency mavenUrl="com.google.dagger:dagger-android-support:$dagger_version" gradleConfiguration="compile" />
<#if generateKotlin>
  <dependency mavenUrl="com.google.dagger:dagger-compiler:$dagger_version" gradleConfiguration="kapt" />
  <dependency mavenUrl="com.google.dagger:dagger-android-processor:$dagger_version" gradleConfiguration="kapt" />
<#else>
  <dependency mavenUrl="com.google.dagger:dagger-compiler:$dagger_version" gradleConfiguration="annotationProcessor" />
  <dependency mavenUrl="com.google.dagger:dagger-android-processor:$dagger_version" gradleConfiguration="annotationProcessor" />
</#if>
<#if includeAndroidArch>
  <dependency mavenUrl="android.arch.lifecycle:extensions:$arch_lifecycle_extensions_version" gradleConfiguration="implementation" />
</#if>

<!-- Scope -->
<#if generateKotlin>
  <instantiate from="root/src/app_package/di/scope/ActivityScope.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/scope/ActivityScope.kt" />
  <instantiate from="root/src/app_package/di/scope/FragmentScope.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/scope/FragmentScope.kt" />
  <#if includeAndroidArch>
    <instantiate from="root/src/app_package/di/scope/ViewModelScope.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/scope/ViewModelScope.kt" />
  </#if>
<#else>
  <instantiate from="root/src/app_package/di/scope/ActivityScope.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/scope/ActivityScope.java" />
  <instantiate from="root/src/app_package/di/scope/FragmentScope.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/scope/FragmentScope.java" />
  <#if includeAndroidArch>
    <instantiate from="root/src/app_package/di/scope/ViewModelScope.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/scope/ViewModelScope.java" />
  </#if>
</#if>

<!-- Application -->
<#if generateKotlin>
  <instantiate from="root/src/app_package/App.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/App.kt" />
  <instantiate from="root/src/app_package/di/app/AppModule.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/app/AppModule.kt" />
  <#if includeAndroidArch>
    <instantiate from="root/src/app_package/di/app/AppCompatAppComponentWithViewModel.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.kt" />
  <#else>
    <#if backwardsCompatibility!true>
      <instantiate from="root/src/app_package/di/app/AppCompatAppComponent.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.kt" />
    <#else>
      <instantiate from="root/src/app_package/di/app/AppComponent.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.kt" />
    </#if>
  </#if>
<#else>
  <instantiate from="root/src/app_package/App.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/App.java" />
  <instantiate from="root/src/app_package/di/app/AppModule.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/app/AppModule.java" />
  <#if includeAndroidArch>
    <instantiate from="root/src/app_package/di/app/AppCompatAppComponentWithViewModel.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.java" />
  <#else>
    <#if backwardsCompatibility!true>
      <instantiate from="root/src/app_package/di/app/AppCompatAppComponent.java.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.java" />
    <#else>
      <instantiate from="root/src/app_package/di/app/AppComponent.java.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.java" />
    </#if>
  </#if>
</#if>

<!-- Activity -->
<instantiate from="root/res/layout/activity_sample.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/layout/activity_sample.xml" />
<#if generateKotlin>
  <instantiate from="root/src/app_package/view/activity/SampleActivityComponent.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivityComponent.kt" />
  <instantiate from="root/src/app_package/di/activity/ActivityBindingModule.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityBindingModule.kt" />
  <instantiate from="root/src/app_package/di/activity/FragmentComponentBuilderHost.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/activity/FragmentComponentBuilderHost.kt" />
  <#if includeAndroidArch>
    <instantiate from="root/src/app_package/view/activity/AppCompatSampleActivityWithViewModel.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivity.kt" />
  <#else>
    <#if backwardsCompatibility!true>
      <instantiate from="root/src/app_package/view/activity/AppCompatSampleActivity.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivity.kt" />
    <#else>
      <instantiate from="root/src/app_package/view/activity/SampleActivity.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivity.kt" />
    </#if>
  </#if>
  <#if useAppCompat>
    <instantiate from="root/src/app_package/di/activity/AppCompatActivityMapKey.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityMapKey.kt" />
    <instantiate from="root/src/app_package/di/activity/AppCompatActivityComponent.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityComponent.kt" />
    <instantiate from="root/src/app_package/di/activity/AppCompatActivityModule.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityModule.kt" />
  <#else>
    <instantiate from="root/src/app_package/di/activity/ActivityMapKey.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityMapKey.kt" />
    <instantiate from="root/src/app_package/di/activity/ActivityComponent.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityComponent.kt" />
    <instantiate from="root/src/app_package/di/activity/ActivityModule.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityModule.kt" />
  </#if>
<#else>
  <instantiate from="root/src/app_package/view/activity/SampleActivityComponent.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivityComponent.java" />
  <instantiate from="root/src/app_package/di/activity/ActivityBindingModule.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityBindingModule.java" />
  <instantiate from="root/src/app_package/di/activity/ActivityComponentBuilder.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityComponentBuilder.java" />
  <instantiate from="root/src/app_package/di/activity/FragmentComponentBuilderHost.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/activity/FragmentComponentBuilderHost.java" />
  <#if includeAndroidArch>
    <instantiate from="root/src/app_package/view/activity/AppCompatSampleActivityWithViewModel.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivity.java" />
  <#else>
    <#if backwardsCompatibility!true>
      <instantiate from="root/src/app_package/view/activity/AppCompatSampleActivity.java.ftl"
                  to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivity.java" />
    <#else>
      <instantiate from="root/src/app_package/view/activity/SampleActivity.java.ftl"
                  to="${escapeXmlAttribute(srcOut)}/view/activity/SampleActivity.java" />
    </#if>
  </#if>
  <#if useAppCompat>
    <instantiate from="root/src/app_package/di/activity/AppCompatActivityMapKey.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityMapKey.java" />
    <instantiate from="root/src/app_package/di/activity/AppCompatActivityComponent.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityComponent.java" />
    <instantiate from="root/src/app_package/di/activity/AppCompatActivityModule.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityModule.java" />
  <#else>
    <instantiate from="root/src/app_package/di/activity/ActivityMapKey.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityMapKey.java" />
    <instantiate from="root/src/app_package/di/activity/ActivityComponent.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityComponent.java" />
    <instantiate from="root/src/app_package/di/activity/ActivityModule.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityModule.java" />
  </#if>
</#if>

<!-- ViewModel -->
<#if includeAndroidArch>
  <#if generateKotlin>
    <instantiate from="root/src/app_package/viewmodel/SampleViewModelComponent.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/viewmodel/SampleViewModelComponent.kt" />
    <instantiate from="root/src/app_package/viewmodel/SampleViewModel.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/viewmodel/SampleViewModel.kt" />
    <instantiate from="root/src/app_package/repository/SampleRepository.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/repository/SampleRepository.kt" />

    <instantiate from="root/src/app_package/di/viewmodel/ViewModelBindingModule.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelBindingModule.kt" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelMapKey.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelMapKey.kt" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelComponent.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelComponent.kt" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelModule.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelModule.kt" />
  <#else>
    <instantiate from="root/src/app_package/viewmodel/SampleViewModelComponent.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/viewmodel/SampleViewModelComponent.java" />
    <instantiate from="root/src/app_package/viewmodel/SampleViewModel.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/viewmodel/SampleViewModel.java" />
    <instantiate from="root/src/app_package/repository/SampleRepository.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/repository/SampleRepository.java" />

    <instantiate from="root/src/app_package/di/viewmodel/ViewModelBindingModule.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelBindingModule.java" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelMapKey.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelMapKey.java" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelComponent.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelComponent.java" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelComponentBuilder.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelComponentBuilder.java" />
    <instantiate from="root/src/app_package/di/viewmodel/ViewModelModule.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/viewmodel/ViewModelModule.java" />
  </#if>
</#if>

<!-- Fragment -->
<instantiate from="root/res/layout/fragment_sample.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/layout/fragment_sample.xml" />
<#if generateKotlin>
  <instantiate from="root/src/app_package/view/fragment/SampleFragment.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/view/fragment/SampleFragment.kt" />
  <instantiate from="root/src/app_package/view/fragment/SampleFragmentComponent.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/view/fragment/SampleFragmentComponent.kt" />

  <instantiate from="root/src/app_package/di/fragment/FragmentBindingModule.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentBindingModule.kt" />
  <instantiate from="root/src/app_package/di/fragment/FragmentComponent.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentComponent.kt" />
  <instantiate from="root/src/app_package/di/fragment/FragmentMapKey.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentMapKey.kt" />
  <instantiate from="root/src/app_package/di/fragment/FragmentModule.kt.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentModule.kt" />
<#else>
  <instantiate from="root/src/app_package/view/fragment/SampleFragment.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/view/fragment/SampleFragment.java" />
  <instantiate from="root/src/app_package/view/fragment/SampleFragmentComponent.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/view/fragment/SampleFragmentComponent.java" />

  <instantiate from="root/src/app_package/di/fragment/FragmentBindingModule.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentBindingModule.java" />
  <instantiate from="root/src/app_package/di/fragment/FragmentComponent.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentComponent.java" />
  <instantiate from="root/src/app_package/di/fragment/FragmentComponentBuilder.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentComponentBuilder.java" />
  <instantiate from="root/src/app_package/di/fragment/FragmentMapKey.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentMapKey.java" />
  <instantiate from="root/src/app_package/di/fragment/FragmentModule.java.ftl"
              to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentModule.java" />
</#if>

<!-- Util -->
<#if includeAndroidArch>
  <#if generateKotlin>
    <instantiate from="root/src/app_package/di/AppCompatDaggerUtilWithViewModel.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/DaggerUtil.kt" />
  <#else>
    <instantiate from="root/src/app_package/di/AppCompatDaggerUtilWithViewModel.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/di/DaggerUtil.java" />
  </#if>
<#else>
  <#if generateKotlin>
    <#if backwardsCompatibility!true>
      <instantiate from="root/src/app_package/di/AppCompatDaggerUtil.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/DaggerUtil.kt" />
    <#else>
      <instantiate from="root/src/app_package/di/DaggerUtil.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/DaggerUtil.kt" />
    </#if>
  <#else>
    <#if backwardsCompatibility!true>
      <instantiate from="root/src/app_package/di/AppCompatDaggerUtil.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/DaggerUtil.java" />
      <#else>
      <instantiate from="root/src/app_package/di/DaggerUtil.java.ftl"
                  to="${escapeXmlAttribute(srcOut)}/di/DaggerUtil.java" />
    </#if>
  </#if>
</#if>
</recipe>

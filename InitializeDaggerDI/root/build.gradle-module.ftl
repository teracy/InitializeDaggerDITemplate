<#if generateKotlin>
apply plugin: 'kotlin-kapt'

kapt {
    generateStubs = true
}
</#if>

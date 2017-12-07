package ${packageName}.view.fragment

import dagger.Module
import dagger.Subcomponent
import ${packageName}.di.fragment.FragmentComponent
import ${packageName}.di.fragment.FragmentComponentBuilder
import ${packageName}.di.fragment.FragmentModule
import ${packageName}.di.scope.FragmentScope

@Subcomponent(modules = arrayOf(SampleFragmentComponent.SampleFragmentModule::class))
@FragmentScope
interface SampleFragmentComponent : FragmentComponent<SampleFragment> {
    @Subcomponent.Builder
    interface Builder : FragmentComponentBuilder<SampleFragmentModule, SampleFragmentComponent>

    // TODO: Add parameters
    @Module
    class SampleFragmentModule internal constructor(fragment: SampleFragment) : FragmentModule<SampleFragment>(fragment) {
        // NOTE: Add constructor injection here
    }
}

package ${packageName}.di.fragment

import dagger.Binds
import dagger.Module
import dagger.multibindings.IntoMap
import ${packageName}.view.fragment.SampleFragment
import ${packageName}.view.fragment.SampleFragmentComponent

// TODO: Modify @Module annotation accordingly
@Module(subcomponents = arrayOf(SampleFragmentComponent::class))
abstract class FragmentBindingModule {
    @Binds
    @IntoMap
    @FragmentMapKey(SampleFragment::class)
    abstract fun sampleFragmentComponentBuilder(builder: SampleFragmentComponent.Builder): FragmentComponentBuilder<*, *>

    // NOTE: Add injection map here
}

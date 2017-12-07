package ${packageName}.di.viewmodel

import dagger.Binds
import dagger.Module
import dagger.multibindings.IntoMap
import ${packageName}.viewmodel.SampleViewModel
import ${packageName}.viewmodel.SampleViewModelComponent

// TODO: Modify @Module annotation accordingly
@Module(subcomponents = arrayOf(SampleViewModelComponent::class))
abstract class ViewModelBindingModule {
    @Binds
    @IntoMap
    @ViewModelMapKey(SampleViewModel::class)
    abstract fun sampleViewModelComponentBuilder(builder: SampleViewModelComponent.Builder): ViewModelComponentBuilder<*, *>

    // NOTE: Add injection maps here
}

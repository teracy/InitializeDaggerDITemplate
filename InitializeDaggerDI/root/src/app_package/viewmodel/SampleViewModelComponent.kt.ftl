package ${packageName}.viewmodel

import dagger.Module
import dagger.Subcomponent
import ${packageName}.di.viewmodel.ViewModelComponent
import ${packageName}.di.viewmodel.ViewModelComponentBuilder
import ${packageName}.di.viewmodel.ViewModelModule
import ${packageName}.di.scope.ViewModelScope

@Subcomponent(modules = arrayOf(SampleViewModelComponent.SampleViewModelModule::class))
@ViewModelScope
interface SampleViewModelComponent : ViewModelComponent<SampleViewModel> {
    @Subcomponent.Builder
    interface Builder : ViewModelComponentBuilder<SampleViewModelModule, SampleViewModelComponent>

    // TODO: Add parameters
    @Module
    class SampleViewModelModule internal constructor(viewModel: SampleViewModel) : ViewModelModule<SampleViewModel>(viewModel) {
        // NOTE: Add constructor injection here
    }
}

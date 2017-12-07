package ${packageName}.viewmodel;

import android.support.annotation.NonNull;

import dagger.Module;
import dagger.Subcomponent;
import ${packageName}.di.scope.ViewModelScope;
import ${packageName}.di.viewmodel.ViewModelComponent;
import ${packageName}.di.viewmodel.ViewModelComponentBuilder;
import ${packageName}.di.viewmodel.ViewModelModule;

@Subcomponent(modules = {SampleViewModelComponent.SampleViewModelModule.class})
@ViewModelScope
public interface SampleViewModelComponent extends ViewModelComponent<SampleViewModel> {
    @Subcomponent.Builder
    interface Builder extends ViewModelComponentBuilder<SampleViewModelModule, SampleViewModelComponent> {

    }

    @Module
    class SampleViewModelModule extends ViewModelModule<SampleViewModel> {
        // TODO: Add parameters
         SampleViewModelModule(@NonNull SampleViewModel viewModel) {
            super(viewModel);
            // NOTE: Add constructor injection here
        }
    }
}

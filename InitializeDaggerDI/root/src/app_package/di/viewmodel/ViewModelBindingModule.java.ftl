package ${packageName}.di.viewmodel;

import dagger.Binds;
import dagger.Module;
import dagger.multibindings.IntoMap;
import ${packageName}.viewmodel.SampleViewModel;
import ${packageName}.viewmodel.SampleViewModelComponent;

// TODO: Modify @Module annotation accordingly
@Module(subcomponents = {SampleViewModelComponent.class})
public abstract class ViewModelBindingModule {
    @Binds
    @IntoMap
    @ViewModelMapKey(SampleViewModel.class)
    abstract ViewModelComponentBuilder getSampleViewModelComponentBuilder(SampleViewModelComponent.Builder builder);

    // NOTE: Add injection map here
}

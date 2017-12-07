package ${packageName}.di.fragment;

import dagger.Binds;
import dagger.Module;
import dagger.multibindings.IntoMap;
import ${packageName}.view.fragment.SampleFragment;
import ${packageName}.view.fragment.SampleFragmentComponent;

// TODO: Modify @Module annotation accordingly
@Module(subcomponents = {SampleFragmentComponent.class})
public abstract class FragmentBindingModule {
    @Binds
    @IntoMap
    @FragmentMapKey(SampleFragment.class)
    abstract FragmentComponentBuilder getSampleActivityComponentBuilder(SampleFragmentComponent.Builder builder);

    // NOTE: Add injection map here
}

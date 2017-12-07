package ${packageName}.view.fragment;

import android.support.annotation.NonNull;

import dagger.Module;
import dagger.Subcomponent;
import ${packageName}.di.fragment.FragmentComponent;
import ${packageName}.di.fragment.FragmentComponentBuilder;
import ${packageName}.di.fragment.FragmentModule;
import ${packageName}.di.scope.FragmentScope;

@Subcomponent(modules = {SampleFragmentComponent.SampleFragmentModule.class})
@FragmentScope
public interface SampleFragmentComponent extends FragmentComponent<SampleFragment> {
    @Subcomponent.Builder
    interface Builder extends FragmentComponentBuilder<SampleFragmentComponent.SampleFragmentModule, SampleFragmentComponent> {
    }

    @Module
    class SampleFragmentModule extends FragmentModule<SampleFragment> {
        // TODO: Add parameters
        SampleFragmentModule(@NonNull SampleFragment fragment) {
            super(fragment);
            // NOTE: Add constructor injection here
        }
    }
}

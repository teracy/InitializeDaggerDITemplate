package ${packageName}.view.activity;

import android.support.annotation.NonNull;

import dagger.Module;
import dagger.Subcomponent;
import ${packageName}.di.activity.ActivityComponent;
import ${packageName}.di.activity.ActivityComponentBuilder;
import ${packageName}.di.activity.ActivityModule;
import ${packageName}.di.fragment.FragmentBindingModule;
import ${packageName}.di.scope.ActivityScope;

@Subcomponent(modules = {SampleActivityComponent.SampleActivityModule.class, FragmentBindingModule.class})
@ActivityScope
public interface SampleActivityComponent extends ActivityComponent<SampleActivity> {
    @Subcomponent.Builder
    interface Builder extends ActivityComponentBuilder<SampleActivityComponent.SampleActivityModule, SampleActivityComponent> {
    }

    @Module
    class SampleActivityModule extends ActivityModule<SampleActivity> {
        // TODO: Add parameters
        SampleActivityModule(@NonNull SampleActivity activity) {
            super(activity);
            // NOTE: Add constructor injection here
        }
    }
}

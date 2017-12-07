package ${packageName}.view.activity

import dagger.Module
import dagger.Subcomponent
import ${packageName}.di.activity.ActivityComponent
import ${packageName}.di.activity.ActivityComponentBuilder
import ${packageName}.di.activity.ActivityModule
import ${packageName}.di.fragment.FragmentBindingModule
import ${packageName}.di.scope.ActivityScope

@Subcomponent(modules = arrayOf(SampleActivityComponent.SampleActivityModule::class, FragmentBindingModule::class))
@ActivityScope
interface SampleActivityComponent : ActivityComponent<SampleActivity> {
    @Subcomponent.Builder
    interface Builder : ActivityComponentBuilder<SampleActivityModule, SampleActivityComponent>

    // TODO: Add parameters
    @Module
    class SampleActivityModule internal constructor(activity: SampleActivity) : ActivityModule<SampleActivity>(activity) {
        // NOTE: Add constructor injection here
    }
}

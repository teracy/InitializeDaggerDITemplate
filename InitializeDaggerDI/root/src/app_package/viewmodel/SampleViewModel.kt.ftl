package ${packageName}.viewmodel

import android.arch.lifecycle.ViewModel
import ${packageName}.di.DaggerUtil
import ${packageName}.repository.SampleRepository
import javax.inject.Inject

class SampleViewModel : ViewModel() {
    @Inject lateinit var repository: SampleRepository

    init {
        DaggerUtil.getComponentBuilder<SampleViewModelComponent.Builder>(this)
                .getBuilder(SampleViewModelComponent.SampleViewModelModule(this))
                .build().injectMembers(this)
    }
}

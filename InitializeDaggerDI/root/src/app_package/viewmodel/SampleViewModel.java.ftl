package ${packageName}.viewmodel;

import android.arch.lifecycle.ViewModel;

import javax.inject.Inject;

import ${packageName}.di.DaggerUtil;
import ${packageName}.repository.SampleRepository;

public class SampleViewModel extends ViewModel {
    @Inject
    SampleRepository repository;

    @SuppressWarnings("unchecked")
    public SampleViewModel() {
        super();
        DaggerUtil.getComponentBuilder(this)
                .getBuilder(new SampleViewModelComponent.SampleViewModelModule(this))
                .build().injectMembers(this);
    }
}

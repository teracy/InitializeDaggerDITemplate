package ${packageName}.di.viewmodel;

import android.arch.lifecycle.ViewModel;

import dagger.MapKey;

@MapKey
public @interface ViewModelMapKey {
    Class<? extends ViewModel> value();
}

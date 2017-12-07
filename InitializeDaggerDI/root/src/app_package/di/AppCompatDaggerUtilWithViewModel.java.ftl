package ${packageName}.di;

import android.arch.lifecycle.ViewModel;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.App;
import ${packageName}.di.activity.ActivityComponentBuilder;
import ${packageName}.di.viewmodel.ViewModelComponentBuilder;

public class DaggerUtil {
    @NonNull
    public static ActivityComponentBuilder getComponentBuilder(@NonNull AppCompatActivity activity) {
        return App.getAppComponent().getActivityComponentBuilders().get(activity.getClass());
    }

    @NonNull
    public static ViewModelComponentBuilder getComponentBuilder(@NonNull ViewModel viewModel) {
        return App.getAppComponent().getViewModelComponentBuilders().get(viewModel.getClass());
    }
}

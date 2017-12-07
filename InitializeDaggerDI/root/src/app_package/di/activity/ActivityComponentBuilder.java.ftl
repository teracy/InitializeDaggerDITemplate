package ${packageName}.di.activity;

public interface ActivityComponentBuilder<M extends ActivityModule, C extends ActivityComponent> {
    ActivityComponentBuilder<M, C> getBuilder(M activityModule);

    C build();
}

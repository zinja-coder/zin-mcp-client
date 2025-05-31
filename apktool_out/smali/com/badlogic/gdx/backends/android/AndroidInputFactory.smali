.class public Lcom/badlogic/gdx/backends/android/AndroidInputFactory;
.super Ljava/lang/Object;
.source "AndroidInputFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAndroidInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 8
    .param p0, "activity"    # Lcom/badlogic/gdx/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 34
    .local v3, "input":Lcom/badlogic/gdx/backends/android/AndroidInput;
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .local v4, "sdkVersion":I
    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 36
    const-string v5, "com.badlogic.gdx.backends.android.AndroidInputThreePlus"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    :goto_0
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/badlogic/gdx/Application;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 42
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "input":Lcom/badlogic/gdx/backends/android/AndroidInput;
    check-cast v3, Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 43
    .restart local v3    # "input":Lcom/badlogic/gdx/backends/android/AndroidInput;
    return-object v3

    .line 38
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    const-string v5, "com.badlogic.gdx.backends.android.AndroidInput"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 44
    .end local v3    # "input":Lcom/badlogic/gdx/backends/android/AndroidInput;
    .end local v4    # "sdkVersion":I
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Couldn\'t construct AndroidInput, this should never happen"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

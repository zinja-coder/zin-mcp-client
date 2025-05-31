.class public Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;
.super Ljava/lang/Object;
.source "AndroidVisibilityListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createListener(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V
    .locals 4
    .param p1, "application"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .prologue
    .line 27
    :try_start_0
    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;

    invoke-direct {v2, p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "rootView":Landroid/view/View;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "AndroidApplication"

    const-string v3, "Can\'t create OnSystemUiVisibilityChangeListener, unable to use immersive mode."

    invoke-interface {p1, v2, v3, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

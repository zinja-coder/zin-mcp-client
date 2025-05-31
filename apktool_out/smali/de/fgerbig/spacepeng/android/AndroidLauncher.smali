.class public Lde/fgerbig/spacepeng/android/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "AndroidLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 31
    .local v0, "config":Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    .line 32
    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    .line 33
    new-instance v1, Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/SpacePeng;-><init>()V

    invoke-virtual {p0, v1, v0}, Lde/fgerbig/spacepeng/android/AndroidLauncher;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 34
    return-void
.end method

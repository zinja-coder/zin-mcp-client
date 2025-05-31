.class Lcom/badlogic/gdx/backends/android/AndroidApplication$1;
.super Ljava/lang/Object;
.source "AndroidApplication.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidApplication;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->dispose()V

    .line 161
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    .line 156
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

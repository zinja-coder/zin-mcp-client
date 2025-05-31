.class Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;
.super Ljava/lang/Object;
.source "AndroidDaydream.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidDaydream;->init(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->dispose()V

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 149
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    .line 143
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    .line 138
    return-void
.end method

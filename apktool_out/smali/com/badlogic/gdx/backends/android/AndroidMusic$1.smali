.class Lcom/badlogic/gdx/backends/android/AndroidMusic$1;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music$OnCompletionListener;->onCompletion(Lcom/badlogic/gdx/audio/Music;)V

    .line 178
    return-void
.end method

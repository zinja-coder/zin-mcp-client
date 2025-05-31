.class Lcom/badlogic/gdx/backends/android/AndroidInput$3$3$1;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input$TextInputListener;->canceled()V

    .line 233
    return-void
.end method

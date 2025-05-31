.class Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input$TextInputListener;->input(Ljava/lang/String;)V

    .line 212
    return-void
.end method

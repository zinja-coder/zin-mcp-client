.class Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;
.super Ljava/lang/Object;
.source "AndroidOnscreenKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .local v0, "input":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 139
    :cond_0
    return-void
.end method

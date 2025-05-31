.class Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;
.super Ljava/lang/Object;
.source "AndroidOnscreenKeyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field final handler:Landroid/os/Handler;

.field final input:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->handler:Landroid/os/Handler;

    .line 62
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 63
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$1;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "view":Landroid/widget/TextView;
    return-object v0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 66
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->createView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    .line 67
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 70
    .local v2, "textBoxLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 72
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 73
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getImeOptions()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 75
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v1, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->context:Landroid/content/Context;

    const v5, 0x1030011

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    .line 82
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    return-object v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keycode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    .line 126
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

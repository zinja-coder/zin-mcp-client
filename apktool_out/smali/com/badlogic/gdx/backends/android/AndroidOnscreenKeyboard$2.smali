.class Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;
.super Ljava/lang/Object;
.source "AndroidOnscreenKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->createDialog()Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;

    invoke-direct {v2, p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$2;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    return-void
.end method

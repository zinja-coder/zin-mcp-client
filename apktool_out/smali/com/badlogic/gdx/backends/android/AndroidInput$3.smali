.class Lcom/badlogic/gdx/backends/android/AndroidInput$3;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field final synthetic val$hint:Ljava/lang/String;

.field final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$hint:Ljava/lang/String;

    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 201
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 202
    .local v1, "input":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$hint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 206
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

    invoke-direct {v3, p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/backends/android/AndroidInput$3$2;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$3;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 238
    return-void
.end method

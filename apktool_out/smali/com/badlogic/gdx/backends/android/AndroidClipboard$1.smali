.class Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;
.super Ljava/lang/Object;
.source "AndroidClipboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidClipboard;->setContents(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

.field final synthetic val$contents:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidClipboard;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->val$contents:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 57
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 58
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->val$contents:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 62
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->val$contents:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;->val$contents:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 63
    .local v1, "data":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

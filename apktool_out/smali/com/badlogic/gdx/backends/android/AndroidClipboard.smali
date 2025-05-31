.class public Lcom/badlogic/gdx/backends/android/AndroidClipboard;
.super Ljava/lang/Object;
.source "AndroidClipboard.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Clipboard;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 36
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_2

    .line 37
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->context:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 38
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    .line 47
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :cond_0
    :goto_0
    return-object v3

    .line 39
    .restart local v1    # "clipboard":Landroid/text/ClipboardManager;
    :cond_1
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 41
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->context:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 43
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 44
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 46
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 2
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidClipboard;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidClipboard$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidClipboard;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

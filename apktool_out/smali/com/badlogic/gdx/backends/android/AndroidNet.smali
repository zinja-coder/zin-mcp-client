.class public Lcom/badlogic/gdx/backends/android/AndroidNet;
.super Ljava/lang/Object;
.source "AndroidNet.java"

# interfaces
.implements Lcom/badlogic/gdx/Net;


# instance fields
.field final app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V
    .locals 1
    .param p1, "app"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-direct {v0}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    .line 46
    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V

    .line 56
    return-void
.end method

.method public newClientSocket(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
    .locals 1
    .param p1, "protocol"    # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "hints"    # Lcom/badlogic/gdx/net/SocketHints;

    .prologue
    .line 65
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)V

    return-object v0
.end method

.method public newServerSocket(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)Lcom/badlogic/gdx/net/ServerSocket;
    .locals 1
    .param p1, "protocol"    # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "port"    # I
    .param p3, "hints"    # Lcom/badlogic/gdx/net/ServerSocketHints;

    .prologue
    .line 60
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    return-object v0
.end method

.method public openURI(Ljava/lang/String;)Z
    .locals 6
    .param p1, "URI"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "result":Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 72
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v4}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidNet$1;

    invoke-direct {v5, p0, v3}, Lcom/badlogic/gdx/backends/android/AndroidNet$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidNet;Landroid/net/Uri;)V

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    const/4 v2, 0x1

    .line 87
    :cond_0
    return v2
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 1
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;
    .param p2, "httpResponseListener"    # Lcom/badlogic/gdx/Net$HttpResponseListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->netJavaImpl:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/net/NetJavaImpl;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    .line 51
    return-void
.end method

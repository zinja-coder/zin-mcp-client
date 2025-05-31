.class Lcom/badlogic/gdx/net/NetJavaImpl$1;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

.field final synthetic val$connection:Ljava/net/HttpURLConnection;

.field final synthetic val$doingOutPut:Z

.field final synthetic val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

.field final synthetic val$httpResponseListener:Lcom/badlogic/gdx/Net$HttpResponseListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iput-boolean p2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$doingOutPut:Z

    iput-object p3, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    iput-object p4, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    iput-object p5, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpResponseListener:Lcom/badlogic/gdx/Net$HttpResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 168
    :try_start_0
    iget-boolean v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$doingOutPut:Z

    if-eqz v7, :cond_0

    .line 170
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v7}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "contentAsString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 172
    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v6, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-static {v6}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    .end local v2    # "contentAsString":Ljava/lang/String;
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 193
    new-instance v0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;

    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    .local v0, "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    :try_start_3
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v8, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/net/NetJavaImpl;->getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v4

    .line 197
    .local v4, "listener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    if-eqz v4, :cond_1

    .line 198
    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V

    .line 200
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v8, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :try_start_4
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 212
    .end local v0    # "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    .end local v4    # "listener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    :goto_1
    return-void

    .line 176
    .restart local v2    # "contentAsString":Ljava/lang/String;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v7

    invoke-static {v6}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 204
    .end local v2    # "contentAsString":Ljava/lang/String;
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 207
    :try_start_5
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpResponseListener:Lcom/badlogic/gdx/Net$HttpResponseListener;

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 209
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v8, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    goto :goto_1

    .line 179
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "contentAsString":Ljava/lang/String;
    :cond_2
    :try_start_6
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v7}, Lcom/badlogic/gdx/Net$HttpRequest;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 180
    .local v1, "contentAsStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 181
    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v5

    .line 183
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_7
    invoke-static {v1, v5}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 185
    :try_start_8
    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v7

    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 202
    .end local v1    # "contentAsStream":Ljava/io/InputStream;
    .end local v2    # "contentAsString":Ljava/lang/String;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    :catchall_2
    move-exception v7

    iget-object v8, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 209
    .end local v0    # "clientResponse":Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v7

    iget-object v8, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->this$0:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v9, p0, Lcom/badlogic/gdx/net/NetJavaImpl$1;->val$httpRequest:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    throw v7
.end method

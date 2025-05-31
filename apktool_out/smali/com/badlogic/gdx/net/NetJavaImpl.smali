.class public Lcom/badlogic/gdx/net/NetJavaImpl;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    }
.end annotation


# instance fields
.field final connections:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field final listeners:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Lcom/badlogic/gdx/Net$HttpResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 122
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 123
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 124
    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v0

    .line 227
    .local v0, "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->cancelled()V

    .line 229
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    .line 231
    :cond_0
    return-void
.end method

.method declared-synchronized getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;
    .locals 2
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Net$HttpResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .local v0, "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    monitor-exit p0

    return-object v0

    .line 245
    .end local v0    # "httpResponseListener":Lcom/badlogic/gdx/Net$HttpResponseListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;
    .param p2, "httpResponseListener"    # Lcom/badlogic/gdx/Net$HttpResponseListener;
    .param p3, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 17
    .param p1, "httpRequest"    # Lcom/badlogic/gdx/Net$HttpRequest;
    .param p2, "httpResponseListener"    # Lcom/badlogic/gdx/Net$HttpResponseListener;

    .prologue
    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 128
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "can\'t process a HTTP request without URL set"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V

    .line 222
    :goto_0
    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    .line 136
    .local v12, "method":Ljava/lang/String;
    const-string v3, "GET"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    const-string v13, ""

    .line 138
    .local v13, "queryString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "value":Ljava/lang/String;
    if-eqz v15, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 140
    :cond_1
    new-instance v14, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .end local v13    # "queryString":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .local v14, "url":Ljava/net/URL;
    :goto_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 147
    .local v7, "connection":Ljava/net/HttpURLConnection;
    const-string v3, "POST"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PUT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v5, 0x1

    .line 148
    .local v5, "doingOutPut":Z
    :goto_2
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 149
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 150
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getFollowRedirects()Z

    move-result v3

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/badlogic/gdx/net/NetJavaImpl;->putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 157
    .local v10, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 214
    .end local v5    # "doingOutPut":Z
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "method":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 216
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    goto/16 :goto_0

    .line 142
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "method":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v14, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v14    # "url":Ljava/net/URL;
    goto :goto_1

    .line 147
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 160
    .restart local v5    # "doingOutPut":Z
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v16, v0

    new-instance v3, Lcom/badlogic/gdx/net/NetJavaImpl$1;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/net/NetJavaImpl$1;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 218
    .end local v5    # "doingOutPut":Z
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "method":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    .restart local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    throw v3
.end method

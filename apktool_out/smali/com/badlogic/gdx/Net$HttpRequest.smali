.class public Lcom/badlogic/gdx/Net$HttpRequest;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequest"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentLength:J

.field private contentStream:Ljava/io/InputStream;

.field private followRedirects:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Ljava/lang/String;

.field private timeOut:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentLength:J

    return-wide v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iput-object v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->url:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    .line 266
    iput-object v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->content:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentStream:Ljava/io/InputStream;

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentLength:J

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    .line 271
    return-void
.end method

.method public setContent(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "contentStream"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .prologue
    .line 190
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentStream:Ljava/io/InputStream;

    .line 191
    iput-wide p2, p0, Lcom/badlogic/gdx/Net$HttpRequest;->contentLength:J

    .line 192
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->content:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 2
    .param p1, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->followRedirects:Z

    .line 211
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Following redirects can\'t be disabled using the GWT/WebGL backend!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/Net$HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->httpMethod:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "timeOut"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->timeOut:I

    .line 199
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/badlogic/gdx/Net$HttpRequest;->url:Ljava/lang/String;

    .line 170
    return-void
.end method

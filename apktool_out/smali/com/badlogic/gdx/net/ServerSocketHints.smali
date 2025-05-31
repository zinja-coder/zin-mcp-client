.class public Lcom/badlogic/gdx/net/ServerSocketHints;
.super Ljava/lang/Object;
.source "ServerSocketHints.java"


# instance fields
.field public acceptTimeout:I

.field public backlog:I

.field public performancePrefBandwidth:I

.field public performancePrefConnectionTime:I

.field public performancePrefLatency:I

.field public receiveBufferSize:I

.field public reuseAddress:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->backlog:I

    .line 36
    iput v1, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefConnectionTime:I

    .line 38
    iput v2, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefLatency:I

    .line 40
    iput v1, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefBandwidth:I

    .line 42
    iput-boolean v2, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->reuseAddress:Z

    .line 44
    const/16 v0, 0x1388

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->acceptTimeout:I

    .line 46
    const/16 v0, 0x1000

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->receiveBufferSize:I

    return-void
.end method

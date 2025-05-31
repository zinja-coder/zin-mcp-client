.class public Lcom/badlogic/gdx/utils/DataBuffer;
.super Lcom/badlogic/gdx/utils/DataOutput;
.source "DataBuffer.java"


# instance fields
.field private final outStream:Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/DataBuffer;-><init>(I)V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    .line 16
    new-instance v0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;-><init>(Ljava/io/OutputStream;)V

    .line 17
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataBuffer;->out:Ljava/io/OutputStream;

    check-cast v0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DataBuffer;->outStream:Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataBuffer;->outStream:Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public toArray()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataBuffer;->outStream:Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

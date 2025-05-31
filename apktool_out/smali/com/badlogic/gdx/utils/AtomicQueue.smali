.class public Lcom/badlogic/gdx/utils/AtomicQueue;
.super Ljava/lang/Object;
.source "AtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/badlogic/gdx/utils/AtomicQueue;, "Lcom/badlogic/gdx/utils/AtomicQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->queue:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 38
    return-void
.end method

.method private next(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/badlogic/gdx/utils/AtomicQueue;, "Lcom/badlogic/gdx/utils/AtomicQueue<TT;>;"
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->queue:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/AtomicQueue;, "Lcom/badlogic/gdx/utils/AtomicQueue<TT;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 56
    .local v0, "read":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 57
    .local v2, "write":I
    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->queue:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "value":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/AtomicQueue;->next(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/badlogic/gdx/utils/AtomicQueue;, "Lcom/badlogic/gdx/utils/AtomicQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 46
    .local v2, "write":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 47
    .local v1, "read":I
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/AtomicQueue;->next(I)I

    move-result v0

    .line 48
    .local v0, "next":I
    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    .line 51
    :goto_0
    return v3

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->queue:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 50
    iget-object v3, p0, Lcom/badlogic/gdx/utils/AtomicQueue;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 51
    const/4 v3, 0x1

    goto :goto_0
.end method

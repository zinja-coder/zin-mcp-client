.class public abstract Lcom/badlogic/gdx/utils/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Pool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final freeObjects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final max:I

.field public peak:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 82
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 59
    iget v0, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/badlogic/gdx/utils/Pool$Poolable;

    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lcom/badlogic/gdx/utils/Pool$Poolable;->reset()V

    .line 62
    :cond_2
    return-void
.end method

.method public freeAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    .local p1, "objects":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "object cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    .line 69
    .local v0, "freeObjects":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Pool;->max:I

    .line 70
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_4

    .line 71
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "object":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_2

    .line 70
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .restart local v3    # "object":Ljava/lang/Object;, "TT;"
    :cond_2
    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 74
    :cond_3
    instance-of v4, v3, Lcom/badlogic/gdx/utils/Pool$Poolable;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/badlogic/gdx/utils/Pool$Poolable;

    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    invoke-interface {v3}, Lcom/badlogic/gdx/utils/Pool$Poolable;->reset()V

    goto :goto_1

    .line 76
    :cond_4
    iget v4, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/utils/Pool;->peak:I

    .line 77
    return-void
.end method

.method public getFree()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method protected abstract newObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Pool;->freeObjects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

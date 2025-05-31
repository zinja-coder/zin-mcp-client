.class final Lcom/artemis/utils/Bag$BagIterator;
.super Ljava/lang/Object;
.source "Bag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/utils/Bag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BagIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field final synthetic this$0:Lcom/artemis/utils/Bag;

.field private validCursorPos:Z


# direct methods
.method private constructor <init>(Lcom/artemis/utils/Bag;)V
    .locals 0

    .prologue
    .line 395
    .local p0, "this":Lcom/artemis/utils/Bag$BagIterator;, "Lcom/artemis/utils/Bag<TE;>.BagIterator;"
    iput-object p1, p0, Lcom/artemis/utils/Bag$BagIterator;->this$0:Lcom/artemis/utils/Bag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/artemis/utils/Bag;Lcom/artemis/utils/Bag$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/artemis/utils/Bag;
    .param p2, "x1"    # Lcom/artemis/utils/Bag$1;

    .prologue
    .line 395
    .local p0, "this":Lcom/artemis/utils/Bag$BagIterator;, "Lcom/artemis/utils/Bag<TE;>.BagIterator;"
    invoke-direct {p0, p1}, Lcom/artemis/utils/Bag$BagIterator;-><init>(Lcom/artemis/utils/Bag;)V

    return-void
.end method

.method static synthetic access$102(Lcom/artemis/utils/Bag$BagIterator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/artemis/utils/Bag$BagIterator;
    .param p1, "x1"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/artemis/utils/Bag$BagIterator;->validCursorPos:Z

    return p1
.end method

.method static synthetic access$202(Lcom/artemis/utils/Bag$BagIterator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/artemis/utils/Bag$BagIterator;
    .param p1, "x1"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    return p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 405
    .local p0, "this":Lcom/artemis/utils/Bag$BagIterator;, "Lcom/artemis/utils/Bag<TE;>.BagIterator;"
    iget v0, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    iget-object v1, p0, Lcom/artemis/utils/Bag$BagIterator;->this$0:Lcom/artemis/utils/Bag;

    iget v1, v1, Lcom/artemis/utils/Bag;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lcom/artemis/utils/Bag$BagIterator;, "Lcom/artemis/utils/Bag<TE;>.BagIterator;"
    iget v1, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    iget-object v2, p0, Lcom/artemis/utils/Bag$BagIterator;->this$0:Lcom/artemis/utils/Bag;

    iget v2, v2, Lcom/artemis/utils/Bag;->size:I

    if-ne v1, v2, :cond_0

    .line 412
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iterated past last element"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/artemis/utils/Bag$BagIterator;->this$0:Lcom/artemis/utils/Bag;

    iget-object v1, v1, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    aget-object v0, v1, v2

    .line 416
    .local v0, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/artemis/utils/Bag$BagIterator;->validCursorPos:Z

    .line 417
    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/artemis/utils/Bag$BagIterator;, "Lcom/artemis/utils/Bag<TE;>.BagIterator;"
    iget-boolean v0, p0, Lcom/artemis/utils/Bag$BagIterator;->validCursorPos:Z

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/artemis/utils/Bag$BagIterator;->validCursorPos:Z

    .line 428
    iget-object v0, p0, Lcom/artemis/utils/Bag$BagIterator;->this$0:Lcom/artemis/utils/Bag;

    iget v1, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/artemis/utils/Bag$BagIterator;->cursor:I

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->remove(I)Ljava/lang/Object;

    .line 429
    return-void
.end method

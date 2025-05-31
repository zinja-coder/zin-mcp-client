.class public Lcom/badlogic/gdx/utils/Array$ArrayIterable;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final allowRemove:Z

.field private final array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field private iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    .line 561
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 0
    .param p2, "allowRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    .line 565
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    .line 566
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 573
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->array:Lcom/badlogic/gdx/utils/Array;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v3, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v4, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 581
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 586
    :goto_0
    return-object v0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput v3, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v4, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator1:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator2:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    goto :goto_0
.end method

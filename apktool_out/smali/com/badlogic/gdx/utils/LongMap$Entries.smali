.class public Lcom/badlogic/gdx/utils/LongMap$Entries;
.super Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/LongMap$MapIterator",
        "<TV;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry",
        "<TV;>;>;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/LongMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 1
    .param p1, "map"    # Lcom/badlogic/gdx/utils/LongMap;

    .prologue
    .line 701
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    .line 698
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/LongMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 702
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 722
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/LongMap$Entry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/LongMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 707
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 709
    .local v0, "keyTable":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 710
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    .line 711
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    .line 716
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->currentIndex:I

    .line 717
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->findNextIndex()V

    .line 718
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    return-object v1

    .line 713
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    .line 714
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 697
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->next()Lcom/badlogic/gdx/utils/LongMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 731
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->remove()V

    .line 732
    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 697
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap$Entries;, "Lcom/badlogic/gdx/utils/LongMap$Entries<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method

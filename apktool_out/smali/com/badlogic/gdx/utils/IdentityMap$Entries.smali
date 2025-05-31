.class public Lcom/badlogic/gdx/utils/IdentityMap$Entries;
.super Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;
.source "IdentityMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IdentityMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator",
        "<TK;TV;",
        "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IdentityMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    .line 645
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    .line 649
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 664
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IdentityMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->hasNext:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 654
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "#iterator() cannot be used nested."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v0, v1, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 656
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->nextIndex:I

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IdentityMap$Entry;->key:Ljava/lang/Object;

    .line 657
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->nextIndex:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/badlogic/gdx/utils/IdentityMap$Entry;->value:Ljava/lang/Object;

    .line 658
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->currentIndex:I

    .line 659
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->findNextIndex()V

    .line 660
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->next()Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 644
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 644
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap$Entries;, "Lcom/badlogic/gdx/utils/IdentityMap$Entries<TK;TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->reset()V

    return-void
.end method

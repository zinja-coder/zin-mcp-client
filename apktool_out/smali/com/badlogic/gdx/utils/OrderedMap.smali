.class public Lcom/badlogic/gdx/utils/OrderedMap;
.super Lcom/badlogic/gdx/utils/ObjectMap;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;,
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;,
        Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

.field final keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

.field private values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->capacity:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 42
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 45
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->capacity:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedMap;->capacity:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 52
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 71
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 72
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 66
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    .line 67
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapEntries;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    goto :goto_0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 125
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapKeys;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    goto :goto_0
.end method

.method public orderedKeys()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 61
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 140
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    iget v5, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-nez v5, :cond_0

    const-string v5, "{}"

    .line 152
    :goto_0
    return-object v5

    .line 141
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 142
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 143
    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 144
    .local v3, "keys":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TK;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 145
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-lez v1, :cond_1

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 147
    :cond_1
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 148
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 149
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 152
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    goto :goto_0
.end method

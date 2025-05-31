.class public Lcom/badlogic/gdx/utils/QuickSelect;
.super Ljava/lang/Object;
.source "QuickSelect.java"


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
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private comp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private medianOfThreePivot(II)I
    .locals 5
    .param p1, "leftIdx"    # I
    .param p2, "rightIdx"    # I

    .prologue
    .line 67
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v0, v4, p1

    .line 68
    .local v0, "left":Ljava/lang/Object;, "TT;"
    add-int v4, p1, p2

    div-int/lit8 v2, v4, 0x2

    .line 69
    .local v2, "midIdx":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v1, v4, v2

    .line 70
    .local v1, "mid":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v3, v4, p2

    .line 74
    .local v3, "right":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    .line 75
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 88
    .end local v2    # "midIdx":I
    :cond_0
    :goto_0
    return v2

    .line 77
    .restart local v2    # "midIdx":I
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    move v2, p2

    .line 78
    goto :goto_0

    :cond_2
    move v2, p1

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_4

    move v2, p1

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    move v2, p2

    .line 86
    goto :goto_0
.end method

.method private partition(III)I
    .locals 5
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivot"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v1, v3, p3

    .line 37
    .local v1, "pivotValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    .line 38
    move v2, p1

    .line 39
    .local v2, "storage":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 40
    iget-object v3, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 41
    invoke-direct {p0, v2, v0}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    .line 46
    return v2
.end method

.method private recursiveSelect(III)I
    .locals 6
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "k"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    if-ne p1, p2, :cond_0

    .line 62
    .end local p1    # "left":I
    :goto_0
    return p1

    .line 51
    .restart local p1    # "left":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/QuickSelect;->medianOfThreePivot(II)I

    move-result v1

    .line 52
    .local v1, "pivotIndex":I
    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/QuickSelect;->partition(III)I

    move-result v2

    .line 53
    .local v2, "pivotNewIndex":I
    sub-int v4, v2, p1

    add-int/lit8 v0, v4, 0x1

    .line 55
    .local v0, "pivotDist":I
    if-ne v0, p3, :cond_1

    .line 56
    move v3, v2

    .local v3, "result":I
    :goto_1
    move p1, v3

    .line 62
    goto :goto_0

    .line 57
    .end local v3    # "result":I
    :cond_1
    if-ge p3, v0, :cond_2

    .line 58
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, p1, v4, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v3

    .restart local v3    # "result":I
    goto :goto_1

    .line 60
    .end local v3    # "result":I
    :cond_2
    add-int/lit8 v4, v2, 0x1

    sub-int v5, p3, v0

    invoke-direct {p0, v4, p2, v5}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v3

    .restart local v3    # "result":I
    goto :goto_1
.end method

.method private swap(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 95
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aput-object v0, v1, p2

    .line 97
    return-void
.end method


# virtual methods
.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .locals 2
    .param p3, "n"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)I"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/QuickSelect;, "Lcom/badlogic/gdx/utils/QuickSelect<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    .line 32
    const/4 v0, 0x0

    add-int/lit8 v1, p4, -0x1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v0

    return v0
.end method

.class public Lcom/badlogic/gdx/utils/Select;
.super Ljava/lang/Object;
.source "Select.java"


# static fields
.field private static instance:Lcom/badlogic/gdx/utils/Select;


# instance fields
.field private quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fastMax([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .locals 5
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v1, 0x0

    .line 85
    .local v1, "highestIdx":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 86
    aget-object v3, p1, v2

    aget-object v4, p1, v1

    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "comparison":I
    if-lez v0, :cond_0

    .line 88
    move v1, v2

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "comparison":I
    :cond_1
    return v1
.end method

.method private fastMin([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .locals 5
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v2, 0x0

    .line 73
    .local v2, "lowestIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 74
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 75
    .local v0, "comparison":I
    if-gez v0, :cond_0

    .line 76
    move v2, v1

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "comparison":I
    :cond_1
    return v2
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Select;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Select;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Select;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    .line 40
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    return-object v0
.end method


# virtual methods
.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;
    .locals 2
    .param p3, "kthLowest"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result v0

    .line 45
    .local v0, "idx":I
    aget-object v1, p1, v0

    return-object v1
.end method

.method public selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .locals 4
    .param p3, "kthLowest"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)I"
        }
    .end annotation

    .prologue
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v1, 0x1

    .line 49
    if-ge p4, v1, :cond_0

    .line 50
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "cannot select from empty array (size < 1)"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    if-le p3, p4, :cond_1

    .line 52
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kth rank is larger than size. k: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    if-ne p3, v1, :cond_2

    .line 58
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->fastMin([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result v0

    .line 67
    .local v0, "idx":I
    :goto_0
    return v0

    .line 59
    .end local v0    # "idx":I
    :cond_2
    if-ne p3, p4, :cond_3

    .line 61
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->fastMax([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result v0

    .restart local v0    # "idx":I
    goto :goto_0

    .line 64
    .end local v0    # "idx":I
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    if-nez v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/QuickSelect;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/QuickSelect;->select([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result v0

    .restart local v0    # "idx":I
    goto :goto_0
.end method

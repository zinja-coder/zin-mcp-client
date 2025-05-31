.class public Lcom/badlogic/gdx/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Array$ArrayIterable;,
        Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    }
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
.field public items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

.field public ordered:Z

.field private predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Predicate$PredicateIterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    const/4 v3, 0x0

    .line 76
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 77
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 78
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 69
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 55
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I
    .param p3, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 64
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 3
    .param p1, "ordered"    # Z
    .param p3, "start"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 94
    iput p4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    .line 86
    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static of(ZILjava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p0, "ordered"    # Z
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    return-object v0
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 100
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 101
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    .line 102
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 106
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .locals 3
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start + count must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 112
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 116
    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .locals 5
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 120
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int v1, v2, p3

    .line 121
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 122
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 124
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 312
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 313
    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 314
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 316
    return-void
.end method

.method public contains(Ljava/lang/Object;Z)Z
    .locals 5
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 161
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 162
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 163
    .local v0, "i":I
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    .line 164
    .end local v0    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 165
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_0

    .line 170
    :goto_0
    return v3

    :cond_1
    move v1, v0

    .line 167
    .end local v0    # "i":I
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    .line 168
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    move v0, v1

    .line 170
    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .param p1, "additionalCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int v0, v1, p1

    .line 331
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 447
    if-ne p1, p0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v7

    .line 448
    :cond_1
    instance-of v9, p1, Lcom/badlogic/gdx/utils/Array;

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 449
    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 450
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 451
    .local v4, "n":I
    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v4, v9, :cond_3

    move v7, v8

    goto :goto_0

    .line 452
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 453
    .local v2, "items1":[Ljava/lang/Object;
    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 454
    .local v3, "items2":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 455
    aget-object v5, v2, v1

    .line 456
    .local v5, "o1":Ljava/lang/Object;
    aget-object v6, v3, v1

    .line 457
    .local v6, "o2":Ljava/lang/Object;
    if-nez v5, :cond_5

    if-nez v6, :cond_6

    .line 454
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 457
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_6
    move v7, v8

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .locals 4
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 178
    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 179
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 180
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_1

    move v3, v0

    .line 185
    :goto_1
    return v3

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v2    # "n":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 183
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    .line 182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 185
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index can\'t be > size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 139
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 140
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v1, :cond_2

    .line 141
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 145
    aput-object p2, v0, p1

    .line 146
    return-void

    .line 143
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;Z)I
    .locals 3
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 194
    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 195
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 196
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    move v2, v0

    .line 201
    :goto_1
    return v2

    .line 195
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 199
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    .line 198
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 201
    :cond_4
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Array is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 294
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v0, v1, v2

    .line 295
    .local v0, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 296
    return-object v0
.end method

.method public random()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .locals 8
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget v5, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 262
    .local v5, "size":I
    move v6, v5

    .line 263
    .local v6, "startSize":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 264
    .local v3, "items":[Ljava/lang/Object;, "[TT;"
    if-eqz p2, :cond_2

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_5

    .line 266
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 267
    .local v2, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 268
    aget-object v7, v3, v1

    if-ne v2, v7, :cond_1

    .line 269
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 270
    add-int/lit8 v5, v5, -0x1

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "i":I
    .end local v1    # "ii":I
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v4    # "n":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v4    # "n":I
    :goto_2
    if-ge v0, v4, :cond_5

    .line 277
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 278
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .restart local v1    # "ii":I
    :goto_3
    if-ge v1, v5, :cond_3

    .line 279
    aget-object v7, v3, v1

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 281
    add-int/lit8 v5, v5, -0x1

    .line 276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 278
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 287
    .end local v1    # "ii":I
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_5
    if-eq v5, v6, :cond_6

    const/4 v7, 0x1

    :goto_4
    return v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index can\'t be >= size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 231
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    aget-object v1, v0, p1

    .line 232
    .local v1, "value":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 233
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v2, :cond_1

    .line 234
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 238
    return-object v1

    .line 236
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, v2

    aput-object v2, v0, p1

    goto :goto_0
.end method

.method public removeRange(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 243
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p2, v4, :cond_0

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end can\'t be >= size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_0
    if-le p1, p2, :cond_1

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start can\'t be > end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 246
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 247
    .local v0, "count":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v4, :cond_3

    .line 248
    add-int v4, p1, v0

    iget v5, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {v2, v4, v2, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 255
    return-void

    .line 250
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v4, -0x1

    .line 251
    .local v3, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 252
    add-int v4, p1, v1

    sub-int v5, v3, v1

    aget-object v5, v2, v5

    aput-object v5, v2, v4

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 208
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 209
    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 210
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 211
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_1

    .line 212
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 224
    :goto_1
    return v3

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v2    # "n":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 218
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected resize(I)[Ljava/lang/Object;
    .locals 5
    .param p1, "newSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 338
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 339
    .local v1, "newItems":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 341
    return-object v1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 382
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 383
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    div-int/lit8 v4, v6, 0x2

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 384
    sub-int v1, v3, v0

    .line 385
    .local v1, "ii":I
    aget-object v5, v2, v0

    .line 386
    .local v5, "temp":Ljava/lang/Object;, "TT;"
    aget-object v6, v2, v1

    aput-object v6, v2, v0

    .line 387
    aput-object v5, v2, v1

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "ii":I
    .end local v5    # "temp":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public select(Lcom/badlogic/gdx/utils/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Predicate",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;-><init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    return-object v0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;->set(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    goto :goto_0
.end method

.method public selectRanked(Ljava/util/Comparator;I)Ljava/lang/Object;
    .locals 3
    .param p2, "kthLowest"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 364
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/Select;->instance()Lcom/badlogic/gdx/utils/Select;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/Select;->select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectRankedIndex(Ljava/util/Comparator;I)I
    .locals 3
    .param p2, "kthLowest"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 376
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/Select;->instance()Lcom/badlogic/gdx/utils/Select;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 134
    return-void
.end method

.method public shrink()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 392
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 393
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 394
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 395
    .local v1, "ii":I
    aget-object v3, v2, v0

    .line 396
    .local v3, "temp":Ljava/lang/Object;, "TT;"
    aget-object v4, v2, v1

    aput-object v4, v2, v0

    .line 397
    aput-object v3, v2, v1

    .line 393
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 399
    .end local v1    # "ii":I
    .end local v3    # "temp":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 4

    .prologue
    .line 347
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;II)V

    .line 348
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 353
    return-void
.end method

.method public swap(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 149
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first can\'t be >= size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p2, v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "second can\'t be >= size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 152
    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    aget-object v0, v1, p1

    .line 153
    .local v0, "firstValue":Ljava/lang/Object;, "TT;"
    aget-object v2, v1, p2

    aput-object v2, v1, p1

    .line 154
    aput-object v0, v1, p2

    .line 155
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")[TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v3, 0x0

    .line 441
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 442
    .local v0, "result":[Ljava/lang/Object;, "[TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_0

    const-string v3, "[]"

    .line 473
    :goto_0
    return-object v3

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 465
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 466
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 467
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 468
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    .line 469
    const-string v3, ", "

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 470
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 473
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 477
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_0

    const-string v3, ""

    .line 485
    :goto_0
    return-object v3

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 479
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 480
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 481
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    .line 482
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 483
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 485
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 3
    .param p1, "newSize"    # I

    .prologue
    .line 422
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v1, p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_0
.end method

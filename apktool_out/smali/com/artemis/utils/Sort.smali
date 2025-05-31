.class public Lcom/artemis/utils/Sort;
.super Ljava/lang/Object;
.source "Sort.java"


# static fields
.field private static instance:Lcom/artemis/utils/Sort;


# instance fields
.field private comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

.field private timSort:Lcom/artemis/utils/TimSort;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/artemis/utils/Sort;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/artemis/utils/Sort;->instance:Lcom/artemis/utils/Sort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/Sort;

    invoke-direct {v0}, Lcom/artemis/utils/Sort;-><init>()V

    sput-object v0, Lcom/artemis/utils/Sort;->instance:Lcom/artemis/utils/Sort;

    .line 68
    :cond_0
    sget-object v0, Lcom/artemis/utils/Sort;->instance:Lcom/artemis/utils/Sort;

    return-object v0
.end method


# virtual methods
.method public sort(Lcom/artemis/utils/Bag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/artemis/utils/Bag",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "a":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TT;>;"
    iget-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/ComparableTimSort;

    invoke-direct {v0}, Lcom/artemis/utils/ComparableTimSort;-><init>()V

    iput-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    iget-object v1, p1, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/artemis/utils/Bag;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/artemis/utils/ComparableTimSort;->doSort([Ljava/lang/Object;II)V

    .line 38
    return-void
.end method

.method public sort(Lcom/artemis/utils/Bag;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/artemis/utils/Bag",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "a":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TT;>;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iget-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/TimSort;

    invoke-direct {v0}, Lcom/artemis/utils/TimSort;-><init>()V

    iput-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    iget-object v1, p1, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/artemis/utils/Bag;->size()I

    move-result v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/artemis/utils/TimSort;->doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 53
    return-void
.end method

.method public sort([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/ComparableTimSort;

    invoke-direct {v0}, Lcom/artemis/utils/ComparableTimSort;-><init>()V

    iput-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/artemis/utils/ComparableTimSort;->doSort([Ljava/lang/Object;II)V

    .line 43
    return-void
.end method

.method public sort([Ljava/lang/Object;II)V
    .locals 1
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/ComparableTimSort;

    invoke-direct {v0}, Lcom/artemis/utils/ComparableTimSort;-><init>()V

    iput-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Sort;->comparableTimSort:Lcom/artemis/utils/ComparableTimSort;

    invoke-virtual {v0, p1, p2, p3}, Lcom/artemis/utils/ComparableTimSort;->doSort([Ljava/lang/Object;II)V

    .line 48
    return-void
.end method

.method public sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iget-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/TimSort;

    invoke-direct {v0}, Lcom/artemis/utils/TimSort;-><init>()V

    iput-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/artemis/utils/TimSort;->doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 58
    return-void
.end method

.method public sort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 1
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iget-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/TimSort;

    invoke-direct {v0}, Lcom/artemis/utils/TimSort;-><init>()V

    iput-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Sort;->timSort:Lcom/artemis/utils/TimSort;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/artemis/utils/TimSort;->doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 63
    return-void
.end method

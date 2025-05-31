.class Lcom/artemis/WildBag;
.super Lcom/artemis/utils/Bag;
.source "WildBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/artemis/utils/Bag",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<TT;>;"
    invoke-direct {p0}, Lcom/artemis/utils/Bag;-><init>()V

    return-void
.end method


# virtual methods
.method setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 32
    .local p0, "this":Lcom/artemis/WildBag;, "Lcom/artemis/WildBag<TT;>;"
    iput p1, p0, Lcom/artemis/WildBag;->size:I

    .line 33
    return-void
.end method

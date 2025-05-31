.class final Lcom/artemis/EntityManager$ComponentIdentityResolver;
.super Ljava/lang/Object;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComponentIdentityResolver"
.end annotation


# instance fields
.field private final composition:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    .line 271
    iget-object v0, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/artemis/EntityManager$ComponentIdentityResolver;)Lcom/artemis/utils/Bag;
    .locals 1
    .param p0, "x0"    # Lcom/artemis/EntityManager$ComponentIdentityResolver;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    return-object v0
.end method


# virtual methods
.method getIdentity(Ljava/util/BitSet;)I
    .locals 5
    .param p1, "components"    # Ljava/util/BitSet;

    .prologue
    .line 277
    iget-object v3, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "bitsets":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    invoke-virtual {v3}, Lcom/artemis/utils/Bag;->size()I

    move-result v2

    .line 279
    .local v2, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 280
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 279
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v4, p0, Lcom/artemis/EntityManager$ComponentIdentityResolver;->composition:Lcom/artemis/utils/Bag;

    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    move v1, v2

    .line 284
    goto :goto_1
.end method

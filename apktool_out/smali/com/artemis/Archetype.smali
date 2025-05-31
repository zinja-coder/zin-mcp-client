.class public final Lcom/artemis/Archetype;
.super Ljava/lang/Object;
.source "Archetype.java"


# instance fields
.field final compositionId:I

.field final types:[Lcom/artemis/ComponentType;


# direct methods
.method constructor <init>([Lcom/artemis/ComponentType;I)V
    .locals 0
    .param p1, "types"    # [Lcom/artemis/ComponentType;
    .param p2, "compositionId"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/artemis/Archetype;->types:[Lcom/artemis/ComponentType;

    .line 19
    iput p2, p0, Lcom/artemis/Archetype;->compositionId:I

    .line 20
    return-void
.end method

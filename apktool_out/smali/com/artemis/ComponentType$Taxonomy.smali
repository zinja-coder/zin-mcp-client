.class final enum Lcom/artemis/ComponentType$Taxonomy;
.super Ljava/lang/Enum;
.source "ComponentType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/ComponentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Taxonomy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artemis/ComponentType$Taxonomy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/artemis/ComponentType$Taxonomy;

.field public static final enum BASIC:Lcom/artemis/ComponentType$Taxonomy;

.field public static final enum PACKED:Lcom/artemis/ComponentType$Taxonomy;

.field public static final enum POOLED:Lcom/artemis/ComponentType$Taxonomy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/artemis/ComponentType$Taxonomy;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v2}, Lcom/artemis/ComponentType$Taxonomy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artemis/ComponentType$Taxonomy;->BASIC:Lcom/artemis/ComponentType$Taxonomy;

    new-instance v0, Lcom/artemis/ComponentType$Taxonomy;

    const-string v1, "POOLED"

    invoke-direct {v0, v1, v3}, Lcom/artemis/ComponentType$Taxonomy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artemis/ComponentType$Taxonomy;->POOLED:Lcom/artemis/ComponentType$Taxonomy;

    new-instance v0, Lcom/artemis/ComponentType$Taxonomy;

    const-string v1, "PACKED"

    invoke-direct {v0, v1, v4}, Lcom/artemis/ComponentType$Taxonomy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artemis/ComponentType$Taxonomy;->PACKED:Lcom/artemis/ComponentType$Taxonomy;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/artemis/ComponentType$Taxonomy;

    sget-object v1, Lcom/artemis/ComponentType$Taxonomy;->BASIC:Lcom/artemis/ComponentType$Taxonomy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artemis/ComponentType$Taxonomy;->POOLED:Lcom/artemis/ComponentType$Taxonomy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artemis/ComponentType$Taxonomy;->PACKED:Lcom/artemis/ComponentType$Taxonomy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/artemis/ComponentType$Taxonomy;->$VALUES:[Lcom/artemis/ComponentType$Taxonomy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artemis/ComponentType$Taxonomy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/artemis/ComponentType$Taxonomy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artemis/ComponentType$Taxonomy;

    return-object v0
.end method

.method public static values()[Lcom/artemis/ComponentType$Taxonomy;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/artemis/ComponentType$Taxonomy;->$VALUES:[Lcom/artemis/ComponentType$Taxonomy;

    invoke-virtual {v0}, [Lcom/artemis/ComponentType$Taxonomy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artemis/ComponentType$Taxonomy;

    return-object v0
.end method

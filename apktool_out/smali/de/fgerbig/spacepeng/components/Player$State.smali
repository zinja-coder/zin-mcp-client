.class public final enum Lde/fgerbig/spacepeng/components/Player$State;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/components/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/components/Player$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/components/Player$State;

.field public static final enum ALIVE:Lde/fgerbig/spacepeng/components/Player$State;

.field public static final enum DEAD:Lde/fgerbig/spacepeng/components/Player$State;

.field public static final enum RESPAWNING:Lde/fgerbig/spacepeng/components/Player$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lde/fgerbig/spacepeng/components/Player$State;

    const-string v1, "ALIVE"

    invoke-direct {v0, v1, v2}, Lde/fgerbig/spacepeng/components/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Player$State;->ALIVE:Lde/fgerbig/spacepeng/components/Player$State;

    .line 28
    new-instance v0, Lde/fgerbig/spacepeng/components/Player$State;

    const-string v1, "RESPAWNING"

    invoke-direct {v0, v1, v3}, Lde/fgerbig/spacepeng/components/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Player$State;->RESPAWNING:Lde/fgerbig/spacepeng/components/Player$State;

    .line 29
    new-instance v0, Lde/fgerbig/spacepeng/components/Player$State;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v4}, Lde/fgerbig/spacepeng/components/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Player$State;->DEAD:Lde/fgerbig/spacepeng/components/Player$State;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lde/fgerbig/spacepeng/components/Player$State;

    sget-object v1, Lde/fgerbig/spacepeng/components/Player$State;->ALIVE:Lde/fgerbig/spacepeng/components/Player$State;

    aput-object v1, v0, v2

    sget-object v1, Lde/fgerbig/spacepeng/components/Player$State;->RESPAWNING:Lde/fgerbig/spacepeng/components/Player$State;

    aput-object v1, v0, v3

    sget-object v1, Lde/fgerbig/spacepeng/components/Player$State;->DEAD:Lde/fgerbig/spacepeng/components/Player$State;

    aput-object v1, v0, v4

    sput-object v0, Lde/fgerbig/spacepeng/components/Player$State;->$VALUES:[Lde/fgerbig/spacepeng/components/Player$State;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/components/Player$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lde/fgerbig/spacepeng/components/Player$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Player$State;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/components/Player$State;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lde/fgerbig/spacepeng/components/Player$State;->$VALUES:[Lde/fgerbig/spacepeng/components/Player$State;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/components/Player$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/components/Player$State;

    return-object v0
.end method

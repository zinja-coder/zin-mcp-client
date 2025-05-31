.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
.super Ljava/lang/Enum;
.source "RegularEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public static final enum Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public static final enum Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public static final enum EnabledUntilCycleEnd:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const-string v1, "Enabled"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const-string v1, "EnabledUntilCycleEnd"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->EnabledUntilCycleEnd:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 24
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->EnabledUntilCycleEnd:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object v0
.end method

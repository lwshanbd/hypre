
#ifndef HYPRE_CI_LS_HEADER
#define HYPRE_CI_LS_HEADER

#include <HYPRE_config.h>

#include "HYPRE_utilities.h"
#include "HYPRE_CI_mv.h"

/*--------------------------------------------------------------------------
 * Structures
 *--------------------------------------------------------------------------*/

typedef void *HYPRE_StructInterfaceSolver;

/*--------------------------------------------------------------------------
 * Prototypes
 *--------------------------------------------------------------------------*/

# define	P(s) s

/* HYPRE_struct_solver.c */
HYPRE_StructInterfaceSolver HYPRE_NewStructInterfaceSolver P((MPI_Comm context , HYPRE_StructGrid grid , HYPRE_StructStencil stencil ));
int HYPRE_FreeStructInterfaceSolver P((HYPRE_StructInterfaceSolver struct_solver ));
int HYPRE_StructInterfaceSolverSetType P((HYPRE_StructInterfaceSolver solver , int type ));
int HYPRE_StructInterfaceSolverInitialize P((HYPRE_StructInterfaceSolver solver ));
int HYPRE_StructInterfaceSolverSetup P((HYPRE_StructInterfaceSolver solver , HYPRE_StructInterfaceMatrix matrix , HYPRE_StructInterfaceVector soln , HYPRE_StructInterfaceVector rhs ));
int HYPRE_StructInterfaceSolverSolve P((HYPRE_StructInterfaceSolver solver ));
int HYPRE_StructInterfaceSolverSetDropTolerance P((HYPRE_StructInterfaceSolver solver , double tol ));
int HYPRE_StructInterfaceSolverSetFactorRowSize P((HYPRE_StructInterfaceSolver solver , int size ));

#undef P

#endif
